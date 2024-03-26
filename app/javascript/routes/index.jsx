import React from "react";
import Home from "../modules/Home";
import {
    createBrowserRouter,
    RouterProvider,
} from "react-router-dom";

const router = createBrowserRouter([
    {
        path: "/",
        element: <Home />,
    },
]);

export default function Routes() {
    return <RouterProvider router={router} />
}