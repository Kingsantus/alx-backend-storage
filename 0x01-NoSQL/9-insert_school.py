#!/usr/bin/env python3
"""
Defines a function that inserts a document into a collection and
returns the id of the inserted document.
"""


def insert_school(mongo_collection, **kwargs):
    """Insert a document into the collection with the given attributes."""
    return mongo_collection.insert_one(kwargs).inserted_id
