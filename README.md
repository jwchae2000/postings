

#model


1. users
- relationships
    has_many :postings
    has_many :comments
-elements
     email / password
2. postings
  - Relationships
      belongs_to :User
      has_many :comments
- elments
  title, body, user_id
3. comments
- relationships
    belongs_to :Users
    belongs_to :Postings
-elements
  content, user_id, posting_id 

--------------------------------

#controllers / Views

posting controller

comment controller

User => devise gemfile 

-------------------

#CSS / JS : Bootstrap CDN 