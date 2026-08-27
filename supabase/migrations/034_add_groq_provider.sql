-- Drop the existing constraint on the provider column
ALTER TABLE ai_configs DROP CONSTRAINT IF EXISTS ai_configs_provider_check;

-- Add the new constraint allowing groq
ALTER TABLE ai_configs ADD CONSTRAINT ai_configs_provider_check CHECK (provider IN ('openai', 'anthropic', 'groq'));
