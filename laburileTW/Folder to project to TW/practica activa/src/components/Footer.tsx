import React from 'react';
import { Facebook } from 'lucide-react';

const Footer = () => {
  return (
    <footer className="bg-gray-800 text-white p-4">
      <div className="container mx-auto flex justify-between items-center">
        <div>
          <p>Comuna Iscalau</p>
          <p>Adresa: Str. Principală nr. 123, Iscalau, România</p>
          <p>Telefon: 0123 456 789</p>
        </div>
        <a href="https://www.facebook.com/comunaiscalau" target="_blank" rel="noopener noreferrer" className="flex items-center">
          <Facebook size={24} className="mr-2" />
          Urmăriți-ne pe Facebook
        </a>
      </div>
    </footer>
  );
};

export default Footer;