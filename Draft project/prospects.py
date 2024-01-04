import csv

def rank_elements():
    rankings = {}
    source = input("Enter the source of the rankings: ")
    
    while True:
        name = input("Enter a name (or 'done' to finish): ")
        if name == 'done':
            break
        ranking = int(input("Enter the ranking for {}: ".format(name)))
        
        if name in rankings:
            rankings[name].append(ranking)
        else:
            rankings[name] = [ranking]
    
    ranked_elements = sorted(rankings.items(), key=lambda x: min(x[1]))
    
    print("Rankings:")
    for i, (name, ranks) in enumerate(ranked_elements, start=1):
        average_rank = sum(ranks) / len(ranks)
        print("{}. {}: Average Ranking: {:.2f}".format(i, name, average_rank))
    
    save_rankings(source, ranked_elements)


def save_rankings(source, rankings):
    filename = input("Enter a filename to save the rankings: ")
    with open(filename, 'a', newline='') as file:
        writer = csv.writer(file)
        for name, ranks in rankings:
            writer.writerow([source, name] + ranks)


rank_elements()
