-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Marika Bergman', 'marika.bergman@gmail.com', 'Marik' ,'MOCK'),

   ('tiina', 'marika.bergman+tiina@gmail.com', 'tiina' ,'MOCK'),

  ('balboo', 'marika.bergman+balboo@gmail.com', 'balboo', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'Marik' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )