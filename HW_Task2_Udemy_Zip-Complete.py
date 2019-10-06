import os
import csv

#Ensure the reference documents are in the same space as the path you reference 
udemy_csv = os.path.join("web_starter.csv")

# Lists to store data
title = []
price = []
subscribers = []
reviews = []
review_percent = []
length = []

# "id,title,url,isPaid,price,numSubscribers,numReviews,numPublishedLectures,instructionalLevel,contentInfo,publishedTime"
#Loop through every row in csv reader and append the corresponding row/index to the lists 
# csv reader is looping through csvfile and designates that values are delimited by ,
with open(udemy_csv, newline="", encoding = 'utf-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    for row in csvreader:
        
        # Add title
        # We include row[index] because every time we are looping through the values we are looping through rows
       title.append(row[1])

        # Add price
       price.append(row[4])

        # Add number of subscribers
       subscribers.append([5])

        # Add amount of reviews
       reviews.append([6])

        # Determine percent of review left to 2 decimal places
       
       #def review_percent(udemy_data):
        #    reviews = (udemy_data[6])
        #    subscribers = (udemy_data[5])
       #review_percent = (reviews / subscribers) * 100
       #print(review_percent)
       #review_percent.append([])
       
       percent = round(int(row[6]) / int(row[5]), 2)
       review_percent.append(percent)

        # Get length of the course to just a number 
        # Can't convert to floar because "hours" is not a number
        # First you have to split the string, split it at the space, denoted by " "
       new_length = row[9].split(" ")
       length.append(float(new_length[0]))
        

# Zip lists together
# When you zip all of the lists together, you create a tuple of lists 
zipped_data = zip(title, price, subscribers, reviews, review_percent, new_length)

# Set variable for output file
output_file = os.path.join("web_final.csv")

#  Open the output file
with open(output_file, "w", newline="") as datafile:
    writer = csv.writer(datafile)

    # Write the header row
    writer.writerow(["Title", "Course Price", "Subscribers", "Reviews Left",
                     "Percent of Reviews", "Length of Course"])

    # Write in zipped rows
    writer.writerow(zipped_data)
