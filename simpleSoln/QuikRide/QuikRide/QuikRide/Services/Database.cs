﻿using Microsoft.AppCenter.Crashes;
using QuikRide.Interfaces;
using QuikRide.ModelsData;
using SQLite;
using System;
using System.Threading.Tasks;

namespace QuikRide.Services
{
    public sealed class Database : IDatabase
    {
        public Database()
        {
        }

        public SQLiteAsyncConnection AsyncConnection { get; private set; }

        public SQLiteConnection Connection { get; private set; }

        public void CreateTables()
        {
            try
            {
                if (Connection != null)
                {
                    Connection.CreateTable<Location>();
                    Connection.CreateTable<ReservationRequest>();
                }
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                throw new InvalidOperationException($"Error creating sqlite database tables. {ex.Message}");
            }
        }

        public async Task DropTablesAsync()
        {
            try
            {
                if (AsyncConnection != null)
                {
                    await AsyncConnection.DropTableAsync<Location>();
                    await AsyncConnection.DropTableAsync<ReservationRequest>();
                }
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                throw new InvalidOperationException($"Error creating sqlite database tables. {ex.Message}");
            }
        }

        public SQLiteAsyncConnection GetAsyncConnection()
        {
            return AsyncConnection;
        }

        public SQLiteConnection GetConnection()
        {
            return Connection;
        }

        public async Task RestoreCurrentUserDatabaseAsync()
        {
            await DropTablesAsync();
            CreateTables();
        }

        public void SetConnection(SQLiteConnection conn, SQLiteAsyncConnection asyncConn)
        {
            Connection = conn;
            AsyncConnection = asyncConn;
        }
    }
}