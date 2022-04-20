import './App.css';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';

import { ListUser } from './components/ListUser';
import { CreateUser } from './components/CreateUser';


function App() {
  return (
    <div className="App">
      <h1>Fullstack App (React + PHP + MySQL)</h1>
      <BrowserRouter>
        <nav>
          <ul>
            <li>
              <Link to="/">List User</Link>
            </li>
            <li>
              <Link to="user/create">Create Users</Link>
            </li>
          </ul>
        </nav>
        <Routes>
          <Route index element={<ListUser />} />
          <Route path="user/create" element={<CreateUser />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
