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

	public class LoadRequestDriverShift : EventArgs
	{
		public LoadRequestDriverShift(string propertyNameRequestingLoad)
		{
			PropertyNameRequestingLoad = propertyNameRequestingLoad;
		}

		public string PropertyNameRequestingLoad { get; set; }
	}


	public partial class DriverShift : BaseModel<IWebApiDataServiceQR>, IDriverShift
	{
		public event EventHandler<LoadRequestDriverShift> OnLazyLoadRequest = delegate { }; // Empty delegate. Thus we are sure that value is always != null because no one outside of the class can change it.
		private xDTO.DriverShift _dto = null;

		public DriverShift(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService) : base(log, dataService)
		{
			_dto = new xDTO.DriverShift();
			OnLazyLoadRequest += HandleLazyLoadRequest;
		}

		public DriverShift(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService, xDTO.DriverShift dto) : this(log, dataService)
		{
			_dto = dto;
		}


		public virtual string CreatedBy { get { return _dto.CreatedBy; } }
		public virtual System.DateTime CreatedUtcDate { get { return _dto.CreatedUtcDate; } }
		public virtual int DataVersion { get { return _dto.DataVersion; } }
		public virtual int DriverId { get { return _dto.DriverId; } }
		public virtual System.Guid DriverShiftId { get { return _dto.DriverShiftId; } }
		public virtual System.DateTime EndUtcDate { get { return _dto.EndUtcDate; } }
		public virtual bool IsDeleted { get { return _dto.IsDeleted; } }
		public virtual string ModifiedBy { get { return _dto.ModifiedBy; } }
		public virtual System.DateTime ModifiedUtcDate { get { return _dto.ModifiedUtcDate; } }
		public virtual System.DateTime StartUtcDate { get { return _dto.StartUtcDate; } }





	}
}
