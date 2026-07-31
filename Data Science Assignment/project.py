import pandas as pd
df = pd.read_csv("most_streamed_spotify_2025.csv")

##Assignment 1
print("\nResults of Assignment 1")
print("The first 6 rows of the dataset are:")
print(df.head(6))
print("Column names:")
print(df.columns)

rows, columns = df.shape
print(f"Number of rows: {rows}")
print(f"Number of columns: {columns}")
print("Summary statistics of the dataset:")
print(df.describe())

###Assignment 2
print("\nResults of Assignment 2")

#Creating a new column
fav_artists = ["Taylor Swift", "Bad Bunny", "Drake"]

df["myplaylist"] = df["artist"].isin(fav_artists)
print("\nThe updated dataset with the new 'myplaylist' column is:")
print(df[["artist", "myplaylist"]].head(10))

#condition
billion_tracks = df[df["spotify_streams_total"] > 1_000_000_000]

print("\nTracks with over a billion streams:")
print(billion_tracks[["rank", "track", "artist", "spotify_streams_total"]])

##Assignment 3
print("\nResults of Assignment 3")

df_sorted = df.sort_values(by="spotify_streams_total", ascending=True)

print("\nThe dataset sorted by 'spotify_streams_total' in ascending order:\n")
print(df_sorted[["rank", "track", "artist", "spotify_streams_total"]].head(10))