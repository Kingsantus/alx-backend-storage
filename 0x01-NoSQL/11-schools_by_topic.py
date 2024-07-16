#!/usr/bin/env python3
"""
Defines a function that returns a list of schools having a specific topic.
"""


def schools_by_topic(mongo_collection, topic):
    """Return a list of schools having the specified topic."""
    return mongo_collection.find({"topics": topic})
