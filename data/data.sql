INSERT INTO users(
    id,
    name,
    email,
    password,
    role,
    picture,
    created_at,
    updated_at
  )
VALUES(
    '2cc0b083-6094-4540-9d6b-0684a7f01d0a',
    'John Doe',
    'john.doe@email.com',
    '$2a$12$ALmlWCgwWsjwO8gvp4Pw2uPsHacBpXBNhrJwi2Fj07b5J2RyUI5eS',
    'admin',
    'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
    NOW(),
    NOW()
  ),
  (
    'c687af0c-70d7-4832-ac99-b07bf24d8886',
    'Ana Doe',
    'ana.doe@email.com',
    '$2a$12$ALmlWCgwWsjwO8gvp4Pw2uPsHacBpXBNhrJwi2Fj07b5J2RyUI5eS',
    'admin',
    'https://cdn.expertphotography.com/wp-content/uploads/2020/08/social-media-profile-photos.jpg',
    NOW(),
    NOW()
  );