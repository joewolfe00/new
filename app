import { Link, Routes, Route, Navigate } from 'react-router-dom'
import Dashboard from './pages/Dashboard'
import Leads from './pages/Leads'
import Estimates from './pages/Estimates'
import Jobs from './pages/Jobs'
import Inventory from './pages/Inventory'
import NotFound from './pages/NotFound'

function Nav() {
  const link = { padding: '8px 10px', borderRadius: 10, textDecoration: 'none', color: '#111' } as const
  const bar: React.CSSProperties = {
    display: 'flex', alignItems: 'center', gap: 8,
    maxWidth: 1200, margin: '0 auto', padding: '12px 16px'
  }
  return (
    <header style={{ position:'sticky', top:0, background:'#fff', borderBottom:'1px solid #eef2f7', zIndex:10 }}>
      <div style={bar}>
        <b>FloorPro</b>
        <div style={{ flex: 1 }} />
        <Link to="/" style={link}>Dashboard</Link>
        <Link to="/leads" style={link}>Leads</Link>
        <Link to="/estimates" style={link}>Estimates</Link>
        <Link to="/jobs" style={link}>Jobs</Link>
        <Link to="/inventory" style={link}>Inventory</Link>
      </div>
    </header>
  )
}

export default function App() {
  return (
    <div style={{ minHeight:'100vh', background:'#f6f7f9' }}>
      <Nav />
      <main style={{ maxWidth: 1200, margin:'20px auto', padding:'0 16px' }}>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/leads" element={<Leads />} />
          <Route path="/estimates" element={<Estimates />} />
          <Route path="/jobs" element={<Jobs />} />
          <Route path="/inventory" element={<Inventory />} />
          <Route path="/home" element={<Navigate to="/" replace />} />
          <Route path="*" element={<NotFound />} />
        </Routes>
      </main>
      <footer style={{ textAlign:'center', color:'#6b7280', fontSize:12, padding:24 }}>
        © {new Date().getFullYear()} SKIPS CUSTOM FLOORING INC — FloorPro
      </footer>
    </div>
  )
}
