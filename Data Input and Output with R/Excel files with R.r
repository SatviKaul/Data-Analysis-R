#install.packages('readxl')
#library(readxl)
#Reading Excel
excel_sheets('SampleData.xlsx')
df <- read_excel('SampleData.xlsx', sheet = 'SalesOrders')
head(df)
sum(df$Units)
summary(df)
entire.workbook <- lapply(excel_sheets('SampleData.xlsx'), read_excel, path= "SampleData.xlsx")
entire.workbook
#install.packages('xlsx')
# library(xlsx)
write.xlsx(mtcars,"output_example.xlsx")
