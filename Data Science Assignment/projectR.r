df <- read.csv("most_streamed_spotify_2025.csv")

##Assignment 1
cat("\nResults of Assignment 1\n")
cat("The first 6 rows of the dataset are:\n")
print(head(df, 6))

cat("Column names:\n")
print(colnames(df))

rows <- nrow(df)
columns <- ncol(df)

cat(sprintf("Number of rows: %d\n", rows))
cat(sprintf("Number of columns: %d\n", columns))

cat("Summary statistics of the dataset:\n")
print(summary(df))

##Assignment 2
cat("\nResults of Assignment 2\n")

# Creating a new column
fav_artists <- c("Taylor Swift", "Bad Bunny", "Drake")

df$myplaylist <- df$artist %in% fav_artists

cat("\nThe updated dataset with the new 'myplaylist' column is:\n")
print(head(df[, c("artist", "myplaylist")], 10))

# condition
billion_tracks <- df[df$spotify_streams_total > 1000000000, ]

cat("\nTracks with over a billion streams:\n")
print(billion_tracks[, c("rank", "track", "artist", "spotify_streams_total")])

##Assignment 3
cat("\nResults of Assignment 3\n")

# sorting data
df_sorted <- df[order(df$spotify_streams_total), ]

cat("\nThe dataset sorted by 'spotify_streams_total' in ascending order:\n\n")
print(head(df_sorted[, c("rank", "track", "artist", "spotify_streams_total")], 10))