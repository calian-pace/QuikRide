// <auto-generated> - Template:WebApiController, Version:1.1, Id:4b60314b-c212-46e3-8945-3d5daecee905
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Routing;
using Marvin.JsonPatch;
using cghEnums = CodeGenHero.Repository.Enums;
using CodeGenHero.DataService;
using CodeGenHero.Logging;
using CodeGenHero.Repository;
using CodeGenHero.Repository.AutoMapper;
using CodeGenHero.WebApi;
using CGH.QuikRide.Repository.Interface;
using dtoQR = CGH.QuikRide.DTO.QR;
using entQR = CGH.QuikRide.Repository.Entities.QR;

namespace CGH.QuikRide.API.Controllers.QR
{
	public partial class ReservationStatusTypesQRController : QRBaseApiController
	{
			private const string GET_LIST_ROUTE_NAME = "ReservationStatusTypesQRList";
			private const int maxPageSize = 100;

			private GenericFactory<entQR.ReservationStatusType, dtoQR.ReservationStatusType> _factory 
				= new GenericFactory<entQR.ReservationStatusType, dtoQR.ReservationStatusType>();

		public ReservationStatusTypesQRController() : base()
		{
		}

		public ReservationStatusTypesQRController(ILoggingService log, IQRRepository repository)
		: base(log, repository)
		{
		}

		[HttpDelete]
		[VersionedRoute(template: "ReservationStatusTypes/{reservationStatusTypeId}", allowedVersion: 1)]
		public async Task<IHttpActionResult> Delete(int reservationStatusTypeId)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }

				var result = await Repo.Delete_ReservationStatusTypeAsync(reservationStatusTypeId);

				if (result.Status == cghEnums.RepositoryActionStatus.Deleted)
				{
					return StatusCode(HttpStatusCode.NoContent);
				}
				else if (result.Status == cghEnums.RepositoryActionStatus.NotFound)
				{
					return NotFound();
				}

				Warn("Unable to delete object via Web API", LogMessageType.Instance.Warn_WebApi, result.Exception, httpResponseStatusCode: 400, url: Request.RequestUri.ToString());
				return BadRequest();
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		[HttpGet]
		[VersionedRoute(template: "ReservationStatusTypes", allowedVersion: 1, Name = GET_LIST_ROUTE_NAME)]
		public async Task<IHttpActionResult> Get(string sort = null,
		string fields = null, string filter = null, int page = 1, int pageSize = maxPageSize)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }

				var fieldList = GetListByDelimiter(fields);
				bool childrenRequested = false; // TODO: set this based upon actual fields requested.

				var filterList = GetListByDelimiter(filter);
				var dbItems = Repo.GetQueryable_ReservationStatusType().AsNoTracking();
				RunCustomLogicAfterGetQueryableList(ref dbItems, ref filterList);
				dbItems = dbItems.ApplyFilter(filterList);
				dbItems = dbItems.ApplySort(sort ?? (typeof(entQR.ReservationStatusType).GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance)).First().Name);

				if (pageSize > maxPageSize)
				{ // ensure the page size isn't larger than the maximum.
					pageSize = maxPageSize;
				}

				var urlHelper = new UrlHelper(Request);
				PageData paginationHeader = BuildPaginationHeader(urlHelper, GET_LIST_ROUTE_NAME, page: page, totalCount: dbItems.Count(), pageSize: pageSize, sort: sort);
				HttpContext.Current.Response.Headers.Add("X-Pagination", Newtonsoft.Json.JsonConvert.SerializeObject(paginationHeader));

				// return result
				return Ok(dbItems
				.Skip(pageSize * (page - 1))
				.Take(pageSize)
				.ToList()
				.Select(x => _factory.CreateDataShapedObject(x, fieldList, childrenRequested)));
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		[HttpGet]
		[VersionedRoute(template: "ReservationStatusTypes/{reservationStatusTypeId}/{numChildLevels:int=0}", allowedVersion: 1)]
		public async Task<IHttpActionResult> Get(int reservationStatusTypeId, int numChildLevels)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }
				var dbItem = await Repo.Get_ReservationStatusTypeAsync(reservationStatusTypeId, numChildLevels);

				if (dbItem == null)
				{
					Warn("Unable to get object via Web API", LogMessageType.Instance.Warn_WebApi, httpResponseStatusCode: 404, url: Request.RequestUri.ToString());
					return NotFound();
				}

				RunCustomLogicOnGetEntityByPK(ref dbItem, reservationStatusTypeId, numChildLevels);
				return Ok(_factory.Create(dbItem));
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		[HttpPatch]
		[VersionedRoute(template: "ReservationStatusTypes/{reservationStatusTypeId}", allowedVersion: 1)]
		public async Task<IHttpActionResult> Patch(int reservationStatusTypeId, [FromBody] JsonPatchDocument<dtoQR.ReservationStatusType> patchDocument)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }

				if (patchDocument == null)
				{
					return BadRequest();
				}

				var dbItem = await Repo.Get_ReservationStatusTypeAsync(reservationStatusTypeId, numChildLevels: 0);
				if (dbItem == null)
				{
					return NotFound();
				}

				var dtoItem = _factory.Create(dbItem); // map

				// apply changes to the DTO
				patchDocument.ApplyTo(dtoItem);
				dtoItem.ReservationStatusTypeId = reservationStatusTypeId;

				// map the DTO with applied changes to the entity, & update
				var updatedDBItem = _factory.Create(dtoItem); // map
				var result = await Repo.UpdateAsync(updatedDBItem);
				RunCustomLogicAfterUpdatePatch(ref updatedDBItem, ref result);

				if (result.Status == cghEnums.RepositoryActionStatus.Updated)
				{
					// map to dto
					var patchedDTOItem = _factory.Create(result.Entity);
					return Ok(patchedDTOItem);
				}

				Warn("Unable to patch object via Web API", LogMessageType.Instance.Warn_WebApi, result.Exception, httpResponseStatusCode: 400, url: Request.RequestUri.ToString());
				return BadRequest();
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		[HttpPost]
		[VersionedRoute(template: "ReservationStatusTypes", allowedVersion: 1)]
		public async Task<IHttpActionResult> Post([FromBody] dtoQR.ReservationStatusType dtoItem)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }

				if (dtoItem == null)
				{
					return BadRequest();
				}

				// try mapping & saving
				var newDBItem = _factory.Create(dtoItem);

				var result = await Repo.InsertAsync(newDBItem);
				RunCustomLogicAfterInsert(ref newDBItem, ref result);

				if (result.Status == cghEnums.RepositoryActionStatus.Created)
				{   // map to dto
					var newDTOItem = _factory.Create(result.Entity);
					var uriFormatted = Request.RequestUri.ToString().EndsWith("/") == true ? Request.RequestUri.ToString().Substring(0, Request.RequestUri.ToString().Length - 1) : Request.RequestUri.ToString();
					return Created($"{uriFormatted}/{newDTOItem.ReservationStatusTypeId}", newDTOItem);
				}

				Warn("Unable to create object via Web API", LogMessageType.Instance.Warn_WebApi, result.Exception, httpResponseStatusCode: 400, url: Request.RequestUri.ToString());
				return BadRequest();
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		[HttpPut]
		[VersionedRoute(template: "ReservationStatusTypes/{reservationStatusTypeId}", allowedVersion: 1)]
		public async Task<IHttpActionResult> Put(int reservationStatusTypeId, [FromBody] dtoQR.ReservationStatusType dtoItem)
		{
			try
			{
				if (!base.OnActionExecuting(out HttpStatusCode httpStatusCode, out string message)) { return Content(httpStatusCode, message); }

				if (dtoItem == null)
				{
					return BadRequest();
				}

				dtoItem.ReservationStatusTypeId = reservationStatusTypeId;

				var updatedDBItem = _factory.Create(dtoItem); // map
				var result = await Repo.UpdateAsync(updatedDBItem);
				RunCustomLogicAfterUpdatePut(ref updatedDBItem, ref result);

				if (result.Status == cghEnums.RepositoryActionStatus.Updated)
				{
					// map to dto
					var updatedDTOItem = _factory.Create(result.Entity);
					return Ok(updatedDTOItem);
				}
				else if (result.Status == cghEnums.RepositoryActionStatus.NotFound)
				{
					return NotFound();
				}

				Warn("Unable to update object via Web API", LogMessageType.Instance.Warn_WebApi, result.Exception, httpResponseStatusCode: 400, url: Request.RequestUri.ToString());
				return BadRequest();
			}
			catch (Exception ex)
			{
				Error(message: ex.Message, logMessageType: LogMessageType.Instance.Exception_WebApi, ex: ex);

				if (System.Diagnostics.Debugger.IsAttached)
					System.Diagnostics.Debugger.Break();

				return InternalServerError();
			}
		}

		partial void RunCustomLogicAfterInsert(ref CGH.QuikRide.Repository.Entities.QR.ReservationStatusType newDBItem, ref IRepositoryActionResult<entQR.ReservationStatusType> result);

		partial void RunCustomLogicAfterUpdatePatch(ref CGH.QuikRide.Repository.Entities.QR.ReservationStatusType updatedDBItem, ref IRepositoryActionResult<entQR.ReservationStatusType> result);

		partial void RunCustomLogicAfterUpdatePut(ref CGH.QuikRide.Repository.Entities.QR.ReservationStatusType updatedDBItem, ref IRepositoryActionResult<entQR.ReservationStatusType> result);

		partial void RunCustomLogicOnGetEntityByPK(ref entQR.ReservationStatusType dbItem, int reservationStatusTypeId, int numChildLevels);

		partial void RunCustomLogicAfterGetQueryableList(ref IQueryable<entQR.ReservationStatusType> dbItems, ref List<string> filterList);
	}
}