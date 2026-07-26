-- Run this in Supabase SQL Editor

-- Add user_id to memories table
ALTER TABLE memories ADD COLUMN IF NOT EXISTS user_id UUID;

-- Create profiles table
CREATE TABLE IF NOT EXISTS profiles (
  id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  user_context TEXT DEFAULT '',
  approved BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
