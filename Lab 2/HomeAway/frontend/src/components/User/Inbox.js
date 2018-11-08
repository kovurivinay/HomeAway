import React, { Component } from 'react';
import cookie from 'react-cookies';

class Inbox extends Component {
    constructor(props) {
        super(props);
    }
    render() {
        if (localStorage.getItem('cookie') == "owner") {
            return (
                <div>
                    <div className="col-lg-12 col-lg-offset-2">Owner</div>
                    <div>

                        <div class="container">
                            <h2>List of All Bookings</h2>
                            <table class="table">
                                <thead>
                                    <tr>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Hi, How are you.</td>
                                        

                                    </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>

                </div>
            );
        }
    }
}

export default Inbox;