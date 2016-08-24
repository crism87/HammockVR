// Shader created with Shader Forge v1.24 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.24;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33639,y:32742,varname:node_4795,prsc:2|emission-170-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32154,y:32636,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1828-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32433,y:32797,varname:node_2393,prsc:2|A-6074-RGB,B-797-RGB;n:type:ShaderForge.SFN_Color,id:797,x:32206,y:32946,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:1828,x:32036,y:32964,varname:node_1828,prsc:2,spu:0,spv:0.25|UVIN-5958-OUT;n:type:ShaderForge.SFN_TexCoord,id:7762,x:31361,y:32405,varname:node_7762,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2dAsset,id:6848,x:31098,y:32876,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_6848,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:38f021290d87f034892dc2b3d522dce6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9251,x:31315,y:32864,varname:node_9251,prsc:2,tex:38f021290d87f034892dc2b3d522dce6,ntxv:0,isnm:False|TEX-6848-TEX;n:type:ShaderForge.SFN_Append,id:9527,x:31553,y:32846,varname:node_9527,prsc:2|A-7762-U,B-9251-G;n:type:ShaderForge.SFN_Lerp,id:5958,x:31821,y:32828,varname:node_5958,prsc:2|A-7762-UVOUT,B-9527-OUT,T-6566-OUT;n:type:ShaderForge.SFN_Vector1,id:6566,x:31553,y:33009,varname:node_6566,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Multiply,id:170,x:33115,y:32721,varname:node_170,prsc:2|A-8788-OUT,B-2393-OUT;n:type:ShaderForge.SFN_OneMinus,id:9676,x:32565,y:32386,varname:node_9676,prsc:2|IN-7762-V;n:type:ShaderForge.SFN_Add,id:7455,x:32811,y:32386,varname:node_7455,prsc:2|A-9676-OUT,B-9676-OUT,C-9676-OUT;n:type:ShaderForge.SFN_Multiply,id:8788,x:32859,y:32600,varname:node_8788,prsc:2|A-7455-OUT,B-7762-V;proporder:6074-797-6848;pass:END;sub:END;*/

Shader "waterShore" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _noise ("noise", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_9676 = (1.0 - i.uv0.g);
                float4 node_5886 = _Time + _TimeEditor;
                float4 node_9251 = tex2D(_noise,i.uv0);
                float2 node_1828 = (lerp(i.uv0,float2(i.uv0.r,node_9251.g),0.25)+node_5886.g*float2(0,0.25));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1828, _MainTex));
                float3 emissive = (((node_9676+node_9676+node_9676)*i.uv0.g)*(_MainTex_var.rgb*_TintColor.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
