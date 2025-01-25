import React from 'react';

const Mayor = () => {
  return (
    <div className="bg-white shadow-lg rounded-lg p-6 mb-8">
      <h2 className="text-3xl font-bold mb-4">Primarul Comunei Iscalau</h2>
      <div className="flex flex-col md:flex-row">
        <div className="md:w-1/3 mb-4 md:mb-0">
          <img
            src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=300&q=80"
            alt="Primarul Comunei Iscalau"
            className="w-full rounded-lg shadow-md"
          />
        </div>
        <div className="md:w-2/3 md:pl-6">
          <h3 className="text-2xl font-semibold mb-2">Ioan Popescu</h3>
          <p className="mb-4">Mandat: 2020 - 2024</p>
          <p className="mb-4">
            Ioan Popescu este primarul dedicat al Comunei Iscalau, cu o vastă experiență în administrația publică locală. 
            A fost ales în funcție în anul 2020, aducând cu sine o viziune de dezvoltare durabilă și modernizare a comunei.
          </p>
          <p>
            Printre prioritățile sale se numără îmbunătățirea infrastructurii locale, atragerea de investiții și 
            creșterea calității vieții pentru toți locuitorii comunei Iscalau.
          </p>
        </div>
      </div>
    </div>
  );
};

export default Mayor;