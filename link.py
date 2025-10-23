import sys

data_addr = 0x2000

def main():
    text_path = sys.argv[1]
    data_path = sys.argv[2]
    res_path = sys.argv[3]

    with open(text_path, "rb") as text_file, open(data_path, "rb") as data_file:
        text = text_file.read()
        print(f'text length: 0x{len(text)}')
        text = text + b'\0' * (data_addr - len(text))
        data = data_file.read()
        print(f'data length: 0x{len(data)}')
        text = text + data
        print(f'binary length: ox{len(text)}')
    
    with open(res_path, 'wb') as res:
        res.write(text)
        
        
if __name__ == "__main__":
    main()