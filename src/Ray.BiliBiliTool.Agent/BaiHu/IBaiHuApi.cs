using Ray.BiliBiliTool.Agent.Attributes;
using Ray.BiliBiliTool.Agent.BaiHu.Dtos;
using WebApiClientCore.Attributes;

namespace Ray.BiliBiliTool.Agent.BaiHu;

[LogFilter]
public interface IBaiHuApi
{
    [HttpGet("/open2api/v1/env/all")]
    Task<BaiHuGenericResponse<List<BaiHuEnv>>> GetEnvsAsync(
        [Header("Authorization")] string token
    );

    [HttpPost("/open2api/v1/env")]
    Task<BaiHuGenericResponse<BaiHuEnv>> AddEnvAsync(
        [JsonContent] AddBaiHuEnv env,
        [Header("Authorization")] string token
    );

    [HttpPut("/open2api/v1/env/{id}")]
    Task<BaiHuGenericResponse<BaiHuEnv>> UpdateEnvAsync(
        string id,
        [JsonContent] UpdateBaiHuEnv env,
        [Header("Authorization")] string token
    );
}
