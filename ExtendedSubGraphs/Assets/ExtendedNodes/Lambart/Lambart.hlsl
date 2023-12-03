#include <HLSLSupport.cginc>

void Lambert_float(float3 albedo, float3 surfaceNormal, float3 color, half3 lightDir, out float4 output)
{
    half ndotL = max(0, dot(surfaceNormal, lightDir));
    output.rgb = albedo * color * ndotL + fixed4(0.2f, 0.2f, 0.2f, 1);
}
