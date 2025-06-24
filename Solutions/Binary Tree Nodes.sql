SELECT B.N AS ID,
    CASE
        WHEN B.P IS NULL THEN 'Root'
        WHEN NOT EXISTS (
            SELECT 1 FROM BST AS C WHERE C.P = B.N
        ) THEN 'Leaf'
        ELSE 'Inner'
    END AS NAME
FROM BST AS B
ORDER BY ID;
