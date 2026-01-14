#sentimental analysis on selected 30 hotels
# reading data set
install.packages("readxl")
library("readxl")

tourist_reviews<-read_excel('hotel_reviews.xls')

# exploring data
names(tourist_reviews)
head(tourist_reviews)
tail(tourist_reviews)
str(tourist_reviews)
summary(tourist_reviews)
dim(tourist_reviews)
# installing packages

#install.packages("tm")
library(tm)
#install.packages("wordcloud")
library(wordcloud)
library(dplyr)

# inspect the specific subsets

head(tourist_reviews$Review)
review_hotel_name<-tourist_reviews$Review
review_hotel_name<-tolower(review_hotel_name)

#remove links from reviews
review_hotel_name<-gsub("http\\S+\\s*", "", review_hotel_name)

#remove punctuations from reviews
review_hotel_name<-gsub("[[:punct:]]", "",review_hotel_name)

#remove digits from reviews
review_hotel_name <- gsub("[[:digit:]]", "", review_hotel_name)

#removing leading blank spaces
review_hotel_name <- gsub("^ ", "", review_hotel_name)

#remove blank spaces
review_hotel_name <- gsub(" $", "", review_hotel_name)

#remove tablet word from reviews
review_hotel_name <- gsub("tablet", "", review_hotel_name)

#inspect vector after cleansing
head(review_hotel_name)

#converting text vectors to corpus
corpus_hotel_name <- Corpus(VectorSource(review_hotel_name))
corpus_hotel_name

#.Clean up corpus by removing stop words and Whitespace
corpus_hotel_name <- tm_map(corpus_hotel_name, removeWords,stopwords("english"))
corpus_hotel_name<- tm_map(corpus_hotel_name, stripWhitespace)
inspect(corpus_hotel_name)

#Stem the words to their root of all reviews present in the corpus
stem_corpus_hotel_name <- tm_map(corpus_hotel_name, stemDocument)

positive_lexicon <- read.csv("positive-lexicon.txt")
negative_lexicon <- read.csv("negative-lexicon.txt")
head(positive_lexicon)
tail(positive_lexicon)
head(negative_lexicon)
tail(negative_lexicon)

#creating function for sentiment analysis
sentiment <- function(stem_corpus)
{
  wordcloud(stem_corpus,
            min.freq = 3,
            colors=brewer.pal(8, "Dark2"),
            random.color = TRUE,
            max.words = 100)
  total_pos_count <- 0
  total_neg_count <- 0
  pos_count_vector <- c()
  neg_count_vector <- c()
  size <- length(stem_corpus)
  for(i in 1:size)
  {
    
    corpus_words<- list(strsplit(stem_corpus[[i]]$content, split = " "))
    pos_count <-length(intersect(unlist(corpus_words), unlist(positive_lexicon)))
    neg_count <- length(intersect(unlist(corpus_words), unlist(negative_lexicon)))
    
    total_pos_count <- total_pos_count + pos_count 
    total_neg_count <- total_neg_count + neg_count
    
  }
  total_pos_count ## overall positive count
  total_neg_count ## overall negative count
  total_count <- total_pos_count + total_neg_count
  overall_positive_percentage <- (total_pos_count*100)/total_count
  overall_negative_percentage <- (total_neg_count*100)/total_count
  overall_positive_percentage 
  
  df<-data.frame(Review_Type=c("Postive","Negitive"),
                 Count=c(total_pos_count ,total_neg_count ))
  print(df)
  overall_positive_percentage<-paste("Percentage of Positive Reviews:",
                                     round(overall_positive_percentage,2),"%")
  return(overall_positive_percentage)
  
}
sentiment(stem_corpus_hotel_name)