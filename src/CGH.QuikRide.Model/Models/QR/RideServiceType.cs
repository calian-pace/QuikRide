// <auto-generated> - Template:ModelsBackedByDto, Version:1.1, Id:f1539c0d-024f-4b1f-b346-132cdd9dd31f
using CodeGenHero.Logging;
using CodeGenHero.DataService;
using System;
using System.Collections.Generic;
using System.Linq;
using CGH.QuikRide.API.Client.Interface;
using CGH.QuikRide.Model.QR.Interface;
using xDTO = CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.Model.QR
{

	public class LoadRequestRideServiceType : EventArgs
	{
		public LoadRequestRideServiceType(string propertyNameRequestingLoad)
		{
			PropertyNameRequestingLoad = propertyNameRequestingLoad;
		}

		public string PropertyNameRequestingLoad { get; set; }
	}


	public partial class RideServiceType : BaseModel<IWebApiDataServiceQR>, IRideServiceType
	{
		public event EventHandler<LoadRequestRideServiceType> OnLazyLoadRequest = delegate { }; // Empty delegate. Thus we are sure that value is always != null because no one outside of the class can change it.
		private xDTO.RideServiceType _dto = null;

		public RideServiceType(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService) : base(log, dataService)
		{
			_dto = new xDTO.RideServiceType();
			OnLazyLoadRequest += HandleLazyLoadRequest;
		}

		public RideServiceType(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService, xDTO.RideServiceType dto) : this(log, dataService)
		{
			_dto = dto;
		}


		public virtual string Code { get { return _dto.Code; } }
		public virtual string CreatedBy { get { return _dto.CreatedBy; } }
		public virtual System.DateTime CreatedUtcDate { get { return _dto.CreatedUtcDate; } }
		public virtual int DataVersion { get { return _dto.DataVersion; } }
		public virtual bool IsDeleted { get { return _dto.IsDeleted; } }
		public virtual string ModifiedBy { get { return _dto.ModifiedBy; } }
		public virtual System.DateTime ModifiedUtcDate { get { return _dto.ModifiedUtcDate; } }
		public virtual int RideServiceTypeId { get { return _dto.RideServiceTypeId; } }

		private List<IRideServiceTypeTranslation> _rideServiceTypeTranslations = null; // Reverse Navigation


		public virtual List<IRideServiceTypeTranslation> RideServiceTypeTranslations
		{
			get
			{
				if (_rideServiceTypeTranslations == null && _dto != null)
				{	// The core DTO object is loaded, but this property is not loaded.
					if (_dto.RideServiceTypeTranslations != null)
					{	// The core DTO object has data for this property, load it into the model.
						_rideServiceTypeTranslations = new List<IRideServiceTypeTranslation>();
						foreach (var dtoItem in _dto.RideServiceTypeTranslations)
						{
							_rideServiceTypeTranslations.Add(new RideServiceTypeTranslation(Log, DataService, dtoItem));
						}
					}
					else
					{	// Trigger the load data request - The core DTO object is loaded and does not have data for this property.
						OnLazyLoadRequest(this, new LoadRequestRideServiceType(nameof(RideServiceTypeTranslations)));
					}
				}

				return _rideServiceTypeTranslations;
			}
		}



	}
}
