import React from 'react';
import BookDetails from './components/BookDetails';
import BlogDetails from './components/BlogDetails';
import CourseDetails from './components/CourseDetails';
import './App.css'; // Import styling

function App() {
  let showBooks = true;
  let showBlogs = true;
  let showCourses = true;

  return (
    <div className="container">
      {showCourses && (
        <div className="section">
          <h2>Course Details</h2>
          <CourseDetails />
        </div>
      )}

      <div className="divider" style={{ height: '400px' }}/>

      {showBooks ? (
        <div className="section">
          <h2>Book Details</h2>
          <BookDetails />
        </div>
      ) : (
        <p>No Books to show</p>
      )}

      <div className="divider" style={{ height: '400px' }} />

      {showBlogs && (
        <div className="section">
          <h2>Blog Details</h2>
          <BlogDetails />
        </div>
      )}
    </div>
  );
}

export default App;
