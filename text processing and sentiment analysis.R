# install libraries
library(jsonlite)
library(tidyverse)
library(tidytext)
library(textclean) 

data <- fromJSON("/Users/clairehsu/Documents/university of sheffield/data science/introduction in data science/formatted.json")

data <- data%>%
  filter(category == "POLITICS")

df <- data.frame(
  headline = data$headline, # extract headlines
  date = data$date # extract date
)

# convert all text to lowercase
df$headline <- tolower(df$headline)

# remove punctuation
df$headline <- gsub("[[:punct:]]", "", df$headline)

# lemmatise
library(devtools)
library(textstem)

# lemmatise
df$headline <- lemmatize_strings(df$headline)

# tokenise
tokenized_data <- df %>%
  unnest_tokens(word, headline)

# remove stop words
without_stopwords <-tokenized_data %>%
  anti_join(stop_words, by ="word")

#-------------------------------

install.packages("textdata")
library(textdata)

# get NRC lexicon for emotions
nrc_sentiment <- get_sentiments("nrc")

# join data with NRC lexicon
sentiment_data <- without_stopwords %>%
  inner_join(nrc_sentiment, by = "word") %>%
  count(date, sentiment, sort = TRUE)

# extract year_month
sentiment_data <- sentiment_data %>%
  mutate(
    date = as.Date(date),
    year_month = format(date, "%Y-%m")
  )

sentiment_data <- sentiment_data %>%
  mutate(year_month = as.Date(paste0(year_month, "-01")))

# plot sentiment trend
ggplot(sentiment_data, aes(x = year_month, y = n ,color = sentiment,  group = sentiment)) +
  geom_line(size = 0.7, ) +
  labs(title = "Emotion Trends in Political News",
       x = "Date",
       y = "Emotion Count",
       color = "Emotion") +
  theme_minimal() +
  scale_color_brewer(palette = "Set3") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "6 months")