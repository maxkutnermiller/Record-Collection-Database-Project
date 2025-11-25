# Record-Collection-Database-Project

[![2-Minute Project Breakdown](https://img.youtube.com/vi/AX_yH5QjJP0/maxresdefault.jpg)]([https://youtu.be/7lbdTC3QQJs](https://www.youtube.com/watch?v=AX_yH5QjJP0))

This project models a personal vinyl record collection using a normalized relational schema based on cleaned Discogs export data. The goal is to organize releases, artists, labels, genres, and formats into a structure that avoids duplication and supports flexible querying. The design uses core tables for releases and related lookup tables for artists, labels, and styles, connected through junction tables to handle many-to-many relationships. This provides a clean, consistent foundation for exploring the collection, answering questions such as counts by genre or label, identifying multiple pressings of the same release, or analyzing an artist’s appearances across the dataset.
