def process_prospects(file):
    prospects = {}
    with open(file, 'r') as f:
        next(f)  # Skips the header line
        for line in f:
            line = line.strip()
            elements = line.split(',')
            if len(elements) < 3:  # Checks if the line has enough elements
                continue
            
            source, name, *rankings = elements
            rankings = list(map(int, rankings))

            if name in prospects:
                prospects[name].extend(rankings)
            else:
                prospects[name] = rankings
    
    final_list = []
    for name, rankings in prospects.items():
        average_rank = sum(rankings) / len(rankings)
        final_list.append((name, average_rank))

         # Putting Bedard and Fantilli 1 and 2 cuz its pretty much set in stone
    final_list.insert(0, ("Connor Bedard", 1))
    final_list.insert(0, ("Adam Fantilli", 2))
    
    final_list.sort(key=lambda x: x[1])  # Sorts the average rank
    
    return final_list


file_name = 'prospect.txt'
final_rankings = process_prospects(file_name)

print("Final Rankings:")
for i, (name, average_rank) in enumerate(final_rankings, start=1):
    print("{}. {}: {:.2f}".format(i, name, average_rank))
