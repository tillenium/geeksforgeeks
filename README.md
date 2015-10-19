# geeksforgeeks
gem to download geeksforgeeks problems and links and to save it in an excel file.

Usage:
- build and install gem
- require 'geeksforgeeks'

There are three functions to help you download questions into csv

1. Geeksforgeeks.data_structures - Creates a csv of data structure questions from geeksforgeeks under /tmp/DataStructures.csv
2. Geeksforgeeks.algorithms - Creates a csv of Algorithm questions from geeksforgeeks under /tmp/Algorithms.csv
3. Geeksforgeeks.download_page_question url,start_link, end_link, file_name - Will download any page from geeksforgeeks. Provide the link to that page, starting question, ending question, file name
   example:
   - Geeksforgeeks.download_page_question "http://www.geeksforgeeks.org/c-plus-plus/", "Write a C program that won’t compile in C++", "How to restrict dynamic allocation of objects in C++?", "C++.csv"
     - This downloads c++ questions from geeksforgeeks and store it in the /tmp/ folder under name C++.csv


