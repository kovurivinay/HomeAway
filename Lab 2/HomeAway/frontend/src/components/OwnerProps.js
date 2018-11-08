import React, { Component } from 'react';
import '../App.css';
import axios from 'axios';
import { Route } from 'react-router-dom';
import { Link } from 'react-router-dom';
import { Redirect } from 'react-router';
import {Node_IP, Node_Port} from "./../config";

class OwnerProps extends Component {
    constructor(props) {
        super(props);
        this.state = {
            props:[]
        }

    }



    componentDidMount() {
        var data = {
            name: localStorage.getItem('email')
        }
        axios.post(Node_IP+Node_Port+'/get_properties', data)
            .then((response) => {
                //update the state with the response data
                
                console.log(response.data)
                this.setState({
                    props: response.data,

                });
                
            });


    }


    render() {
        //iterate over Bookings to create a table row
        let details = this.state.props.map(booking => {
            return (
                <tr>
                    <td>{booking.headline}</td>
                    <td>{booking.owner}</td>
                    <td>{booking.startdate}</td>
                     <td>{booking.enddate}</td>
                     <td>{booking.Customer_name}</td>
                     {(booking.Booked_dates.length>0)?<td>{booking.Booked_dates.trim().split(" ")[0].substr(0,10)}----{booking.Booked_dates.trim().split(" ")[booking.Booked_dates.trim().split(" ").length-1].substr(0,10)}</td>:<td></td>}

                </tr>

            )
        })
        //if not logged in go to login page
        let redirectVar = null;
        // if(!cookie.load('cookie')){
        //     redirectVar = <Redirect to= "/login"/>
        // }
        return (
            <div>
                {redirectVar}
                <div class="container">
                    <h2>List of All Properties</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Property Name</th>
                                <th>Owner name</th>
                                <th>Available From</th>
                                <th>To</th>
                                <th>Booked by</th>
                                <th>Booked Dates</th>
                            </tr>
                        </thead>
                        <tbody>
                            {/*Display the Tbale row based on data recieved*/}
                            {details}
                        </tbody>
                    </table>

                </div>

            </div>
        )
    }

}


export default OwnerProps