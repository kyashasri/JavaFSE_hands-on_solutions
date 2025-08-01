import React from 'react';

function CourseDetails() {
  const courses = [
    { cname: 'Angular', cdate: '4/5/2021' },
    { cname: 'React', cdate: '6/3/2020' },
  ];

  return (
    <ul>
      {courses.map((course, index) => (
        <div key={index}>
          <h3>{course.cname}</h3>
          <h4>{course.cdate}</h4>
        </div>
      ))}
    </ul>
  );
}

export default CourseDetails;
