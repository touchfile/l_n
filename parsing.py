csv_file = 'data.csv'
result_csv = 'result.csv'


def parse_csv(csv_file, result_csv):
    with open(csv_file, "r") as csv_file:
        line_by_line_file = csv_file.readlines()
        header = line_by_line_file[0]
        print(line_by_line_file[:21])
        # Write header first
        with open(result_csv, "w") as result:
            result.writelines(header)
            # Keep adding every 10th line
            for (index, line) in enumerate(line_by_line_file[1:], start=0):
                if index != 0 and index % 10 == 0:
                    result.writelines(line)


parse_csv(csv_file, result_csv)
