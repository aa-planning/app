import { Controller } from "@hotwired/stimulus"
import App from "../pages"
import { createRoot } from 'react-dom/client'
import React from 'react'

export default class extends Controller {
  // Connects to data-controller="home"
  connect() {
    console.log(this.element, <App />)
    const root = createRoot(this.element);
    root.render(<App />);
  }
}