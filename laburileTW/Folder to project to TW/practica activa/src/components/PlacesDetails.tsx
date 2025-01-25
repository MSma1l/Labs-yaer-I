import React from 'react';
import { useParams } from 'react-router-dom';

interface PlaceInfo {
  id: string;
  name: string;
  description: string;
  images: string[];
}

const places: PlaceInfo[] = [
  {
    id: 'biserica-veche',
    name: 'Biserica Veche',
    description: 'O biserică istorică din secolul al XVIII-lea, cu arhitectură tradițională. Acest lăcaș de cult reprezintă un important reper spiritual și cultural pentru comunitatea noastră, păstrând în interiorul său fresce valoroase și obiecte de cult de o deosebită importanță istorică.',
    images: [
      'https://images.unsplash.com/photo-1548625361-58a9b86aa83b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1541447271487-09612b3f49f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ],
  },
  {
    id: 'parcul-central',
    name: 'Parcul Central',
    description: 'Un loc perfect pentru relaxare și plimbări în natură. Parcul Central oferă o oază de verdeață în inima comunei noastre, cu alei umbrite, bănci confortabile și un lac pitoresc. Este locul ideal pentru picnicuri în familie, jogging matinal sau pur și simplu pentru a vă bucura de frumusețea naturii.',
    images: [
      'https://images.unsplash.com/photo-1585938389612-a552a28d6914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1519331379826-f10be5486c6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80',
    ],
  },
  {
    id: 'muzeul-local',
    name: 'Muzeul Local',
    description: 'Descoperă istoria și tradițiile comunei Iscalau. Muzeul nostru local este o fereastră către trecutul bogat al regiunii, prezentând artefacte, documente și obiecte tradiționale care ilustrează evoluția comunității noastre de-a lungul secolelor. O vizită aici este o călătorie fascinantă în timp.',
    images: [
      'https://images.unsplash.com/photo-1566127992631-137a642a90f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1605972643561-0704429f9170?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ],
  },
  {
    id: 'monumente',
    name: 'Monumente',
    description: 'Explorează monumentele istorice și culturale ale comunei noastre. Aceste repere arhitecturale și sculpturale sunt mărturii ale evenimentelor importante și personalităților care au marcat istoria locală. Fiecare monument are o poveste unică de spus, contribuind la păstrarea memoriei colective.',
    images: [
      'https://images.unsplash.com/photo-1619273013923-728ba47f1a4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'https://images.unsplash.com/photo-1572896619684-b4b5f180b33f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ],
  },
  {
    id: 'povesti-si-legende',
    name: 'Povești și Legende',
    description: 'Descoperă folclorul local și legendele fascinante ale comunei Iscalau. Aceste narațiuni transmise din generație în generație sunt o parte esențială a patrimoniului nostru cultural imaterial. Ele reflectă credințele, valorile și imaginația bogată a strămoșilor noștri, oferind o perspectivă unică asupra identității locale.',
    images: [
      'https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'https://images.unsplash.com/photo-1474932430478-367dbb6832c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ],
  },
];

const PlaceDetails: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const place = places.find(p => p.id === id);

  if (!place) {
    return <div>Locul nu a fost găsit.</div>;
  }

  return (
    <div className="bg-white shadow-lg rounded-lg p-6 mb-8">
      <h2 className="text-3xl font-bold mb-6">{place.name}</h2>
      <div className="flex flex-col md:flex-row items-center mb-8">
        <div className="md:w-1/2 mb-4 md:mb-0 md:mr-8">
          <div className="relative w-64 h-64 mx-auto transform rotate-45 overflow-hidden">
            <img
              src={place.images[0]}
              alt={place.name}
              className="absolute top-0 left-0 w-[150%] h-[150%] object-cover -rotate-45"
            />
          </div>
        </div>
        <div className="md:w-1/2">
          <p className="text-lg">{place.description}</p>
        </div>
      </div>
      <div className="flex flex-col md:flex-row-reverse items-center">
        <div className="md:w-1/2 mb-4 md:mb-0 md:ml-8">
          <div className="relative w-48 h-48 mx-auto transform rotate-45 overflow-hidden">
            <img
              src={place.images[1]}
              alt={`${place.name} - detaliu`}
              className="absolute top-0 left-0 w-[150%] h-[150%] object-cover -rotate-45"
            />
          </div>
        </div>
        <div className="md:w-1/2">
          <p className="text-lg">
            Vă invităm să descoperiți personal farmecul și importanța acestui loc pentru comunitatea noastră. 
            Fiecare vizită aduce o nouă perspectivă și o apreciere mai profundă a patrimoniului nostru local.
          </p>
        </div>
      </div>
    </div>
  );
};

export default PlaceDetails;