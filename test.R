## file for experimenting with R code 


# create mydata var
mydata = read.csv("daie_ca3_data_14.csv")

## select random rows from the data frame
#sample_n(mydata, 3)

## selecting random fraction of rows
#sample_frac(mydata,0.1)

## Remove Duplicate Rows based on all the variables (Complete Row)
#x1 = distinct(mydata)

## Remove Duplicate Rows based on a variable
#x2 = distinct(mydata, test_group, .keep_all= TRUE)

## Remove Duplicates Rows based on multiple variables
#x2 = distinct(mydata, test_group, NA, .keep_all= TRUE)

distinct_all(mydata)

df1 <- mydata %>%
select(test_group, post_trial_or) %>%
  filter(test_group == "Animated" |
           test_group =="Control")

t.test(data = df1, post_trial_or ~ test_group)