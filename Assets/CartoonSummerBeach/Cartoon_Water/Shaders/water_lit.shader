// Shader created with Shader Forge v1.24 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.24;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34818,y:33105,varname:node_4013,prsc:2|diff-9862-OUT,emission-1399-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7667,x:32140,y:32539,ptovrint:False,ptlb:Water Diffuse,ptin:_WaterDiffuse,varname:node_7667,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00556256e03ab764f9db35d85132d72b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7472,x:32490,y:32732,varname:node_7472,prsc:2,tex:00556256e03ab764f9db35d85132d72b,ntxv:0,isnm:False|UVIN-5378-UVOUT,TEX-7667-TEX;n:type:ShaderForge.SFN_Tex2d,id:6694,x:31131,y:33027,varname:node_6694,prsc:2,tex:38f021290d87f034892dc2b3d522dce6,ntxv:0,isnm:False|UVIN-9624-UVOUT,TEX-4590-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4590,x:30875,y:33138,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4590,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:38f021290d87f034892dc2b3d522dce6,ntxv:1,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:610,x:30222,y:32394,varname:node_610,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:5378,x:32213,y:32858,varname:node_5378,prsc:2,spu:0.15,spv:0.1|UVIN-1180-OUT,DIST-9104-OUT;n:type:ShaderForge.SFN_Sin,id:9928,x:30763,y:33765,varname:node_9928,prsc:2|IN-2636-OUT;n:type:ShaderForge.SFN_Time,id:9590,x:30444,y:33710,varname:node_9590,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:2545,x:30968,y:33765,cmnt:-0.5 to 0  more duration,varname:node_2545,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9928-OUT;n:type:ShaderForge.SFN_Clamp01,id:9104,x:31140,y:33783,varname:node_9104,prsc:2|IN-2545-OUT;n:type:ShaderForge.SFN_Lerp,id:452,x:31620,y:32957,varname:node_452,prsc:2|A-3874-OUT,B-5592-OUT,T-9104-OUT;n:type:ShaderForge.SFN_Multiply,id:9062,x:30657,y:32398,varname:node_9062,prsc:2|A-444-OUT,B-676-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1508,x:31074,y:32525,varname:node_1508,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9062-OUT;n:type:ShaderForge.SFN_Multiply,id:7821,x:30590,y:32728,varname:node_7821,prsc:2|A-6718-OUT,B-676-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6718,x:30289,y:32828,ptovrint:False,ptlb:Noise Tiling,ptin:_NoiseTiling,varname:_Tiling_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:5592,x:31382,y:33126,varname:node_5592,prsc:2|A-6694-R,B-6694-G;n:type:ShaderForge.SFN_Append,id:3874,x:31382,y:32957,varname:node_3874,prsc:2|A-6694-G,B-6694-R;n:type:ShaderForge.SFN_Lerp,id:1180,x:32030,y:32818,varname:node_1180,prsc:2|A-1508-OUT,B-4185-OUT,T-4065-OUT;n:type:ShaderForge.SFN_Multiply,id:2636,x:30587,y:33780,varname:node_2636,prsc:2|A-9590-T,B-3503-OUT;n:type:ShaderForge.SFN_Vector1,id:3503,x:30426,y:33927,varname:node_3503,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:4065,x:31620,y:33150,ptovrint:False,ptlb:Warp Intenisty,ptin:_WarpIntenisty,varname:node_4065,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:4185,x:31809,y:32901,varname:node_4185,prsc:2|A-1508-OUT,B-452-OUT;n:type:ShaderForge.SFN_Multiply,id:617,x:32619,y:32063,varname:node_617,prsc:2|A-7543-R,B-9104-OUT;n:type:ShaderForge.SFN_Tex2d,id:7543,x:32345,y:32096,varname:node_7543,prsc:2,tex:38f021290d87f034892dc2b3d522dce6,ntxv:0,isnm:False|UVIN-3843-UVOUT,TEX-4590-TEX;n:type:ShaderForge.SFN_Append,id:9165,x:31725,y:32141,varname:node_9165,prsc:2|A-9545-X,B-9545-Z;n:type:ShaderForge.SFN_FragmentPosition,id:9545,x:31542,y:32159,varname:node_9545,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9505,x:31922,y:32207,varname:node_9505,prsc:2|A-9165-OUT,B-8366-OUT;n:type:ShaderForge.SFN_Vector1,id:8366,x:31682,y:32344,varname:node_8366,prsc:2,v1:0.0255;n:type:ShaderForge.SFN_Color,id:3009,x:32420,y:32465,ptovrint:False,ptlb:Water Color Variation,ptin:_WaterColorVariation,varname:node_3009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:3843,x:32106,y:32207,varname:node_3843,prsc:2,spu:-0.0015,spv:0.003|UVIN-9505-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:276,x:29809,y:32589,varname:node_276,prsc:2;n:type:ShaderForge.SFN_Append,id:3511,x:30014,y:32589,varname:node_3511,prsc:2|A-276-X,B-276-Z;n:type:ShaderForge.SFN_ComponentMask,id:676,x:30173,y:32579,varname:node_676,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3511-OUT;n:type:ShaderForge.SFN_Panner,id:9624,x:30973,y:32831,varname:node_9624,prsc:2,spu:-0.05,spv:-0.05|UVIN-7821-OUT;n:type:ShaderForge.SFN_NormalVector,id:1099,x:33322,y:33535,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewVector,id:3764,x:33099,y:33634,varname:node_3764,prsc:2;n:type:ShaderForge.SFN_Dot,id:9490,x:33517,y:33681,varname:node_9490,prsc:2,dt:0|A-1099-OUT,B-4332-OUT;n:type:ShaderForge.SFN_OneMinus,id:7951,x:33709,y:33724,varname:node_7951,prsc:2|IN-9490-OUT;n:type:ShaderForge.SFN_Slider,id:7838,x:32962,y:33888,ptovrint:False,ptlb:fresnelScale,ptin:_fresnelScale,varname:node_7838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.880345,max:10;n:type:ShaderForge.SFN_Multiply,id:4332,x:33306,y:33757,varname:node_4332,prsc:2|A-3764-OUT,B-7838-OUT;n:type:ShaderForge.SFN_Clamp01,id:8694,x:33866,y:33724,varname:node_8694,prsc:2|IN-7951-OUT;n:type:ShaderForge.SFN_Add,id:1399,x:34260,y:33769,varname:node_1399,prsc:2|A-2572-OUT,B-6294-RGB;n:type:ShaderForge.SFN_Color,id:6294,x:33967,y:33968,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_6294,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2572,x:34046,y:33769,varname:node_2572,prsc:2|A-8694-OUT,B-6661-OUT;n:type:ShaderForge.SFN_Slider,id:6661,x:33529,y:33969,ptovrint:False,ptlb:Fresnel Intenity,ptin:_FresnelIntenity,varname:node_6661,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:9862,x:33446,y:33045,varname:node_9862,prsc:2|A-3957-OUT,B-6772-OUT;n:type:ShaderForge.SFN_Tex2d,id:7156,x:32652,y:33399,varname:node_7156,prsc:2,tex:38f021290d87f034892dc2b3d522dce6,ntxv:0,isnm:False|UVIN-5670-UVOUT,TEX-4590-TEX;n:type:ShaderForge.SFN_Multiply,id:4171,x:32286,y:33432,varname:node_4171,prsc:2|A-6891-OUT,B-2420-OUT;n:type:ShaderForge.SFN_Vector1,id:2420,x:32070,y:33588,varname:node_2420,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Lerp,id:6891,x:32138,y:33317,varname:node_6891,prsc:2|A-1508-OUT,B-4185-OUT,T-8770-OUT;n:type:ShaderForge.SFN_Vector1,id:8770,x:31970,y:33471,varname:node_8770,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Panner,id:5670,x:32466,y:33527,varname:node_5670,prsc:2,spu:-0.013,spv:0|UVIN-4171-OUT;n:type:ShaderForge.SFN_Multiply,id:8826,x:32896,y:33470,varname:node_8826,prsc:2|A-7156-B,B-7156-G;n:type:ShaderForge.SFN_Multiply,id:3957,x:33118,y:33425,varname:node_3957,prsc:2|A-8826-OUT,B-7156-G;n:type:ShaderForge.SFN_OneMinus,id:5241,x:32773,y:32235,varname:node_5241,prsc:2|IN-617-OUT;n:type:ShaderForge.SFN_Lerp,id:860,x:33021,y:32621,varname:node_860,prsc:2|A-3009-RGB,B-7472-RGB,T-5241-OUT;n:type:ShaderForge.SFN_Multiply,id:6772,x:33273,y:32621,varname:node_6772,prsc:2|A-6164-RGB,B-860-OUT;n:type:ShaderForge.SFN_Color,id:6164,x:33090,y:32414,ptovrint:False,ptlb:tint,ptin:_tint,varname:node_6164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:444,x:30156,y:32157,ptovrint:False,ptlb:Tile,ptin:_Tile,varname:node_444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01,max:1;proporder:6164-6294-3009-444-7667-6718-4065-4590-7838-6661;pass:END;sub:END;*/

Shader "water" {
    Properties {
        _tint ("tint", Color) = (0.5,0.5,0.5,1)
        _EmissionColor ("Emission Color", Color) = (0,0,0,1)
        _WaterColorVariation ("Water Color Variation", Color) = (0.5,0.5,0.5,1)
        _Tile ("Tile", Range(0.01, 1)) = 0.01
        _WaterDiffuse ("Water Diffuse", 2D) = "white" {}
        _NoiseTiling ("Noise Tiling", Float ) = 1
        _WarpIntenisty ("Warp Intenisty", Range(0, 1)) = 0
        _Noise ("Noise", 2D) = "gray" {}
        _fresnelScale ("fresnelScale", Range(0, 10)) = 1.880345
        _FresnelIntenity ("Fresnel Intenity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _WaterDiffuse; uniform float4 _WaterDiffuse_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseTiling;
            uniform float _WarpIntenisty;
            uniform float4 _WaterColorVariation;
            uniform float _fresnelScale;
            uniform float4 _EmissionColor;
            uniform float _FresnelIntenity;
            uniform float4 _tint;
            uniform float _Tile;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_9314 = _Time + _TimeEditor;
                float2 node_676 = float2(i.posWorld.r,i.posWorld.b).rg;
                float2 node_1508 = (_Tile*node_676).rg;
                float2 node_9624 = ((_NoiseTiling*node_676)+node_9314.g*float2(-0.05,-0.05));
                float4 node_6694 = tex2D(_Noise,node_9624);
                float4 node_9590 = _Time + _TimeEditor;
                float node_9104 = saturate((sin((node_9590.g*0.5))*0.5+0.5));
                float2 node_4185 = (node_1508+lerp(float2(node_6694.g,node_6694.r),float2(node_6694.r,node_6694.g),node_9104));
                float2 node_5670 = ((lerp(node_1508,node_4185,0.1)*0.6)+node_9314.g*float2(-0.013,0));
                float4 node_7156 = tex2D(_Noise,node_5670);
                float2 node_5378 = (lerp(node_1508,node_4185,_WarpIntenisty)+node_9104*float2(0.15,0.1));
                float4 node_7472 = tex2D(_WaterDiffuse,node_5378);
                float2 node_3843 = ((float2(i.posWorld.r,i.posWorld.b)*0.0255)+node_9314.g*float2(-0.0015,0.003));
                float4 node_7543 = tex2D(_Noise,node_3843);
                float3 diffuseColor = (((node_7156.b*node_7156.g)*node_7156.g)+(_tint.rgb*lerp(_WaterColorVariation.rgb,node_7472.rgb,(1.0 - (node_7543.r*node_9104)))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = ((saturate((1.0 - dot(i.normalDir,(viewDirection*_fresnelScale))))*_FresnelIntenity)+_EmissionColor.rgb);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _WaterDiffuse; uniform float4 _WaterDiffuse_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseTiling;
            uniform float _WarpIntenisty;
            uniform float4 _WaterColorVariation;
            uniform float _fresnelScale;
            uniform float4 _EmissionColor;
            uniform float _FresnelIntenity;
            uniform float4 _tint;
            uniform float _Tile;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_4870 = _Time + _TimeEditor;
                float2 node_676 = float2(i.posWorld.r,i.posWorld.b).rg;
                float2 node_1508 = (_Tile*node_676).rg;
                float2 node_9624 = ((_NoiseTiling*node_676)+node_4870.g*float2(-0.05,-0.05));
                float4 node_6694 = tex2D(_Noise,node_9624);
                float4 node_9590 = _Time + _TimeEditor;
                float node_9104 = saturate((sin((node_9590.g*0.5))*0.5+0.5));
                float2 node_4185 = (node_1508+lerp(float2(node_6694.g,node_6694.r),float2(node_6694.r,node_6694.g),node_9104));
                float2 node_5670 = ((lerp(node_1508,node_4185,0.1)*0.6)+node_4870.g*float2(-0.013,0));
                float4 node_7156 = tex2D(_Noise,node_5670);
                float2 node_5378 = (lerp(node_1508,node_4185,_WarpIntenisty)+node_9104*float2(0.15,0.1));
                float4 node_7472 = tex2D(_WaterDiffuse,node_5378);
                float2 node_3843 = ((float2(i.posWorld.r,i.posWorld.b)*0.0255)+node_4870.g*float2(-0.0015,0.003));
                float4 node_7543 = tex2D(_Noise,node_3843);
                float3 diffuseColor = (((node_7156.b*node_7156.g)*node_7156.g)+(_tint.rgb*lerp(_WaterColorVariation.rgb,node_7472.rgb,(1.0 - (node_7543.r*node_9104)))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
