# CasaTrade

A Next.js-based trading application with backtesting capabilities.

## Features

- **Trading Interface**: Modern web-based trading interface
- **Backtesting**: Historical data analysis and strategy testing
- **Real-time Charts**: Interactive charts using Lightweight Charts
- **Database Integration**: PostgreSQL with Drizzle ORM
- **State Management**: Zustand for client-side state management
- **Type Safety**: Full TypeScript support

## Tech Stack

- **Frontend**: Next.js 14, React 18, TypeScript
- **Styling**: Tailwind CSS
- **Charts**: Lightweight Charts
- **Database**: PostgreSQL with Drizzle ORM
- **State Management**: Zustand
- **Data Fetching**: TanStack Query (React Query)
- **Validation**: Zod
- **Icons**: Lucide React

## Getting Started

### Prerequisites

- Node.js 18+ 
- PostgreSQL database
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Avestami/CasaTrade.git
cd CasaTrade
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env.local
```
Update the `.env.local` file with your database connection details.

4. Run database migrations:
```bash
npm run db:migrate
```

5. Start the development server:
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run lint` - Run ESLint
- `npm run lint:fix` - Fix ESLint issues
- `npm run type-check` - Run TypeScript type checking
- `npm run db:generate` - Generate database migrations
- `npm run db:migrate` - Run database migrations
- `npm run db:studio` - Open Drizzle Studio

## Project Structure

```
├── app/                 # Next.js app directory
│   ├── api/            # API routes
│   ├── globals.css     # Global styles
│   └── page.tsx        # Home page
├── components/         # React components
├── db/                 # Database schema and migrations
├── lib/                # Utility functions
├── data/               # Static data files
└── scripts/            # Build and deployment scripts
```

## Database Schema

The application uses the following main tables:

- **candles**: OHLCV candlestick data
- **orders**: Trading orders with status tracking
- **replay_state**: Backtesting replay state management

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.