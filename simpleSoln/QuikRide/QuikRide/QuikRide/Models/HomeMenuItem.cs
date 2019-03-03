﻿namespace QuikRide.Models
{
    public enum MenuItemType
    {
        Welcome,
        AboutXAML,
        AboutNoXAML,
        AboutMVVM,
        AboutMVVMDI,
        MyReservationRequests,
        Map
    }

    public class HomeMenuItem
    {
        public MenuItemType Id { get; set; }

        public string Title { get; set; }
    }
}