import csv

def ascii_to_text(ascii_value):
    try:
        ascii_value = int(float(ascii_value))
        if ascii_value < 0 or ascii_value > 255:
            return ""
        return chr(ascii_value)
    except ValueError:
        return ""

def convert_csv_to_text(input_file, output_file):
    with open(input_file, 'r') as csv_file:
        csv_reader = csv.reader(csv_file)
        with open(output_file, 'w') as txt_file:
            for row in csv_reader:
                text_row = [ascii_to_text(cell) for cell in row]
                text_line = ''.join(text_row)
                txt_file.write(text_line + '\n')

# Example usage:
convert_csv_to_text('input.csv', 'output.txt')
