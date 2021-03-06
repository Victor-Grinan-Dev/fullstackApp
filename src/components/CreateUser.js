import { useState } from "react";
import axios from "axios";

export function CreateUser() {
  const [inputs, setInputs] = useState({});

  // Collect input data
  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs((values) => ({ ...values, [name]: value }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    axios.post('http://localhost:8091/src/api/', inputs);
    console.log(inputs);
  };

  return (
    <div>
      <h1>Create Users</h1>
      <form onSubmit={handleSubmit} action="" method="">
        <label htmlFor="name">Name:</label>
        <input type="text" name="name" id="name" onChange={handleChange} />
        <br />
        <label htmlFor="email">Email:</label>
        <input type="text" name="email" id="email" onChange={handleChange} />
        <br />
        <label htmlFor="mobile">Mobile:</label>
        <input type="text" name="mobile" id="mobile" onChange={handleChange} />
        <br />
        <button>save</button>
      </form>
    </div>
  );
}

// React Router DOM
export default CreateUser;

