-- Life Dashboard — Supabase Setup
-- Run this entire script in your Supabase SQL Editor

-- Tasks
create table tasks (
  id uuid default gen_random_uuid() primary key,
  text text not null,
  tod text default 'morning', -- morning, afternoon, evening
  area text default 'general', -- school, work, internship, content, general
  date date default current_date,
  due_date date,
  done boolean default false,
  created_at timestamptz default now()
);
alter table tasks enable row level security;
create policy "Public access" on tasks for all using (true) with check (true);

-- Habits
create table habits (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  created_at timestamptz default now()
);
alter table habits enable row level security;
create policy "Public access" on habits for all using (true) with check (true);

-- Habit logs
create table habit_logs (
  id uuid default gen_random_uuid() primary key,
  habit_id uuid references habits(id) on delete cascade,
  date date not null,
  created_at timestamptz default now(),
  unique(habit_id, date)
);
alter table habit_logs enable row level security;
create policy "Public access" on habit_logs for all using (true) with check (true);

-- Internship applications
create table applications (
  id uuid default gen_random_uuid() primary key,
  company text not null,
  role text,
  status text default 'research', -- research, applied, oa, interview, offer, rejected
  deadline date,
  notes text,
  created_at timestamptz default now()
);
alter table applications enable row level security;
create policy "Public access" on applications for all using (true) with check (true);

-- Content pipeline items
create table content_items (
  id uuid default gen_random_uuid() primary key,
  title text not null,
  platform text, -- IG, TT, YT, X, Other
  stage text default 'ideas', -- ideas, drafting, editing, ready
  created_at timestamptz default now()
);
alter table content_items enable row level security;
create policy "Public access" on content_items for all using (true) with check (true);

-- Content ideas bank
create table ideas (
  id uuid default gen_random_uuid() primary key,
  text text not null,
  created_at timestamptz default now()
);
alter table ideas enable row level security;
create policy "Public access" on ideas for all using (true) with check (true);

-- Notes
create table notes (
  id uuid default gen_random_uuid() primary key,
  title text,
  content text,
  tag text default 'general', -- school, work, internship, content, general
  pinned boolean default false,
  updated_at timestamptz default now(),
  created_at timestamptz default now()
);
alter table notes enable row level security;
create policy "Public access" on notes for all using (true) with check (true);

-- Schedule events
create table events (
  id uuid default gen_random_uuid() primary key,
  title text not null,
  day_index integer, -- 0=Mon, 1=Tue ... 6=Sun
  time time,
  duration text,
  category text default 'school', -- school, work, internship, content
  created_at timestamptz default now()
);
alter table events enable row level security;
create policy "Public access" on events for all using (true) with check (true);
