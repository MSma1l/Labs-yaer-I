import React from 'react';
import { Link } from 'react-router-dom';
import { Menu, ChevronDown } from 'lucide-react';

const Header = () => {
  return (
    <header className="bg-blue-600 text-white p-4">
      <nav className="container mx-auto flex justify-between items-center">
        <Link to="/" className="text-2xl font-bold">Comuna Iscalau</Link>
        <ul className="flex space-x-4">
          <li className="relative group">
            <button className="flex items-center">
              Administrație <ChevronDown className="ml-1" size={16} />
            </button>
            <ul className="absolute hidden group-hover:block bg-white text-gray-800 p-2 rounded shadow-lg">
              <li><Link to="/primar" className="block py-1 hover:bg-gray-100">Primarul</Link></li>
              <li><Link to="/consiliu" className="block py-1 hover:bg-gray-100">Consiliul</Link></li>
            </ul>
          </li>
          <li><Link to="/economie">Economie</Link></li>
          <li><Link to="/proiecte">Proiecte</Link></li>
          <li><Link to="/biblioteci">Biblioteci</Link></li>
          <li><Link to="/locuri-de-vizitat">Locuri de Vizitat</Link></li>
          <li><a href="#calendar">Calendar de Activități</a></li>
        </ul>
      </nav>
    </header>
  );
};

export default Header;