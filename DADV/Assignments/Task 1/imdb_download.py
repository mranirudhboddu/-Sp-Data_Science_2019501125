import time
from selenium import webdriver

driver = webdriver.Chrome(executable_path='/D:/Courses/2nd Year/4.Data Science/-Sp-Data_Science_2019501125/DADV/Assignments/Task 1/chromedriver')
# driver.get("https://www.imdb.com/interfaces/")


driver.find_element_by_partial_link_text("https://datasets.imdbws.com/").click()
time.sleep(4)
driver.find_element_by_partial_link_text("name.basics.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.akas.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.basics.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.crew.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.episode.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.principals.tsv.gz").click()
time.sleep(4)
driver.find_element_by_partial_link_text("title.ratings.tsv.gz").click()
time.sleep(4)