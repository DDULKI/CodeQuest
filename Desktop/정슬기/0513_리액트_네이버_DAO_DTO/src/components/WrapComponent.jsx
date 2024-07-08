import React from 'react';
import {BrowserRouter, Routes, Route} from 'react-router-dom';


import SignUpComponent    from './wrap/SignUpComponent';


export default function WrapComponent() {


    

    return (
        <div id='wrap'>
            <SignUpComponent/>
        </div>
    );
};