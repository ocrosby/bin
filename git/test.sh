#!/usr/bin/env sh

# Assign a sample branch name to the branch_name variable
branch_name=$1


# Test the condition
if echo "$branch_name" | grep -q -E ".*\/(PICAP|CLOUDOPS)-[0-9]+"; then
    story=$(echo "$branch_name" | sed -E -n 's/.*\/(PICAP|CLOUDOPS)-([0-9]+).*/\1-\2/p')
    if [ -n "$story" ]; then
        echo "Story number: $story"
    else
        echo "Failed to extract the story number."
    fi
else
    echo "Branch name does not match the pattern."
fi

