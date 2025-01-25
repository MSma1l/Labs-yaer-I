import React, { useState } from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import MainContent from './components/MainContent';
import Footer from './components/Footer';
import FileUpload from './components/FileUpload';
import ImageGallery from './components/ImageGallery';
import Questions from './components/Questions';
import Proposals from './components/Proposals';
import Mayor from './components/Mayor';
import Council from './components/Council';
import Economy from './components/Economy';
import Projects from './components/Projects';
import Libraries from './components/Libraries';
import PlacesToVisit from './components/PlacesToVisit';
import PlaceDetails from './components/PlaceDetails';

function App() {
  const [uploadedFiles, setUploadedFiles] = useState<File[]>([]);
  const [questions, setQuestions] = useState<string[]>([]);
  const [proposals, setProposals] = useState<string[]>([]);

  const handleFileUpload = (files: FileList) => {
    setUploadedFiles([...uploadedFiles, ...Array.from(files)]);
  };

  const handleQuestionSubmit = (question: string) => {
    setQuestions([...questions, question]);
  };

  const handleProposalSubmit = (proposal: string) => {
    setProposals([...proposals, proposal]);
  };

  return (
    <Router>
      <div className="min-h-screen bg-gray-100 flex flex-col">
        <Header />
        <main className="flex-grow container mx-auto px-4 py-8">
          <Routes>
            <Route path="/" element={
              <>
                <h1 className="text-4xl font-bold mb-8 text-center">Bine ați venit în Comuna Iscalau</h1>
                <FileUpload onUpload={handleFileUpload} />
                <ImageGallery images={uploadedFiles.filter(file => file.type.startsWith('image/'))} />
                <MainContent />
                <Questions questions={questions} onSubmit={handleQuestionSubmit} />
                <Proposals proposals={proposals} onSubmit={handleProposalSubmit} />
              </>
            } />
            <Route path="/primar" element={<Mayor />} />
            <Route path="/consiliu" element={<Council />} />
            <Route path="/economie" element={<Economy />} />
            <Route path="/proiecte" element={<Projects />} />
            <Route path="/biblioteci" element={<Libraries />} />
            <Route path="/locuri-de-vizitat" element={<PlacesToVisit />} />
            <Route path="/locuri-de-vizitat/:id" element={<PlaceDetails />} />
          </Routes>
        </main>
        <Footer />
      </div>
    </Router>
  );
}

export default App;