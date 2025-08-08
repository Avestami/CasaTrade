CREATE TABLE IF NOT EXISTS "candles" (
	"id" serial PRIMARY KEY NOT NULL,
	"timestamp" bigint NOT NULL,
	"open" numeric(10, 5) NOT NULL,
	"high" numeric(10, 5) NOT NULL,
	"low" numeric(10, 5) NOT NULL,
	"close" numeric(10, 5) NOT NULL,
	"volume" numeric(15, 2)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "orders" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"type" varchar(10) NOT NULL,
	"status" varchar(10) DEFAULT 'PENDING' NOT NULL,
	"entry_price" numeric(10, 5) NOT NULL,
	"sl_price" numeric(10, 5) NOT NULL,
	"tp_price" numeric(10, 5) NOT NULL,
	"quantity" numeric(10, 2) NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	"filled_at" timestamp with time zone,
	"closed_at" timestamp with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "replay_state" (
	"id" serial PRIMARY KEY NOT NULL,
	"current_candle_timestamp" bigint NOT NULL,
	"is_playing" boolean DEFAULT false NOT NULL,
	"speed" integer DEFAULT 1 NOT NULL
);
