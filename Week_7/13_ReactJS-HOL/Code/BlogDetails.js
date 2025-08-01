import React from 'react';

function BlogDetails() {
  const blogs = [
    { title: 'React Learning', author: 'Stephen Biz', content: 'Welcome to learning React!' },
    { title: 'Installation', author: 'Schwedenier', content: 'You can install React from npm.' },
  ];

  return (
    <ul>
      {blogs.map((blog, index) => (
        <div key={index}>
          <h3>{blog.title}</h3>
          <p><strong>{blog.author}</strong></p>
          <p>{blog.content}</p>
        </div>
      ))}
    </ul>
  );
}

export default BlogDetails;
