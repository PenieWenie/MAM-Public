import csv
import math

def square_root_csv(csv_file):
    output_file = 'output.csv'

    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)

    output_rows = []

    for row in rows:
        output_row = []
        for value in row:
            try:
                number = float(value)
                sqrt_value = math.sqrt(number)
                output_row.append(str(sqrt_value))
            except ValueError:
                output_row.append(value)
        output_rows.append(output_row)

    with open(output_file, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(output_rows)

    print(f"Square roots calculated and saved to {output_file}.")
   
square_root_csv('input.csv')

