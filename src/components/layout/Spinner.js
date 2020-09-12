import React, { Fragment } from "react";
import spinnerImage from "./spinner.gif";

const Spinner = () => {
  return (
    <Fragment>
      <img
        src={spinnerImage}
        alt="Loading"
        style={{ width: "200px", margin: "auto", display: "block" }}
      ></img>
    </Fragment>
  );
};
export default Spinner;
