
import xml.etree.ElementTree as ET

def remove_element_from_xml(input_file, output_file, element_name):
    # XMLファイルを読み込む
    tree = ET.parse(input_file)
    root = tree.getroot()

    namespaces = {node[0]: node[1] for _, node in ET.iterparse(input_file, events=['start-ns'])}
    for key, value in namespaces.items(): 
        ET.register_namespace(key, value)

    # 削除対象の要素を見つける
    elements_to_remove = root.findall(element_name)

    # 要素を削除する
    for elem in elements_to_remove:
        root.remove(elem)

    # 新しいXMLをファイルに書き出す
    tree.write(output_file, encoding='utf-8', xml_declaration=True)

if __name__ == "__main__":
    input_file = "autounattend_win2022std_jp_rdp+winrm.xml"  # 入力ファイル名
    output_file = "autounattend_win2022std_jp_rdp.xml"  # 出力ファイル名
    element_name = "{urn:schemas-microsoft-com:unattend}settings[@pass='oobeSystem']"  # 削除する要素の名前やXPath

    remove_element_from_xml(input_file, output_file, element_name)



# import sys
# import xml.etree.ElementTree as ET

# args = sys.argv

# print(args[0])
# #print(args[1])
# #print(args[2])

# # XMLを解析
# tree = ET.parse('autounattend_win2022std_jp_rdp+winrm.xml')

# # XMLを取得
# root = tree.getroot()

# for elSettings in root.findall('{urn:schemas-microsoft-com:unattend}settings'):
    
#     #print(elSettings.attrib)
#     #print(elSettings.tag)
    
#     if 'pass' in elSettings.keys():
#         atrPass = elSettings.attrib['pass']
#         print(atrPass)

#         if atrPass == "oobeSystem":
#             for elComponent in elSettings.findall('{urn:schemas-microsoft-com:unattend}component'):
#                 for elFirstLogonCommands in elComponent.findall('{urn:schemas-microsoft-com:unattend}FirstLogonCommands'):

#                 print(elComponent.attrib)
#                 print(elComponent.tag)



