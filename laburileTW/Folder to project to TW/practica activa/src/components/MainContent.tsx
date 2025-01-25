import React from 'react';
import { Link } from 'react-router-dom';
import { Book, Briefcase, Landmark, MapPin, BookOpen } from 'lucide-react';

const MainContent = () => {
  return (
    <section className="my-8">
      <h2 className="text-2xl font-bold mb-4">Locuri de Vizitat</h2>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mb-8">
        <Link to="/locuri-de-vizitat/biserica-veche" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <Landmark className="mr-2" /> Biserica Veche
          </h3>
          <p>O biserică istorică din secolul al XVIII-lea, cu arhitectură tradițională.</p>
        </Link>
        <Link to="/locuri-de-vizitat/parcul-central" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <MapPin className="mr-2" /> Parcul Central
          </h3>
          <p>Un loc perfect pentru relaxare și plimbări în natură.</p>
        </Link>
        <Link to="/locuri-de-vizitat/muzeul-local" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <Landmark className="mr-2" /> Muzeul Local
          </h3>
          <p>Descoperă istoria și tradițiile comunei Iscalau.</p>
        </Link>
        <Link to="/locuri-de-vizitat/monumente" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <Landmark className="mr-2" /> Monumente
          </h3>
          <p>Explorează monumentele istorice și culturale ale comunei noastre.</p>
        </Link>
        <Link to="/locuri-de-vizitat/povesti-si-legende" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <BookOpen className="mr-2" /> Povești și Legende
          </h3>
          <p>Descoperă folclorul local și legendele fascinante ale comunei Iscalau.</p>
        </Link>
      </div>

      <h2 className="text-2xl font-bold mb-4">Proiecte și Biblioteci</h2>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <Link to="/proiecte" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <Briefcase className="mr-2" /> Proiecte
          </h3>
          <p>Află despre proiectele de dezvoltare și inițiativele locale în desfășurare.</p>
        </Link>
        <Link to="/biblioteci" className="bg-white p-4 rounded shadow hover:shadow-lg transition duration-300">
          <h3 className="text-xl font-semibold mb-2 flex items-center">
            <Book className="mr-2" /> Biblioteci
          </h3>
          <p>Explorează resursele educaționale și culturale disponibile în bibliotecile noastre.</p>
        </Link>
      </div>
    </section>
  );
};

export default MainContent;