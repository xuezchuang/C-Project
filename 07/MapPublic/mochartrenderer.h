#if !defined(AFX_MOCHARTRENDERER_H__9C9CE561_292A_45FF_8D1E_B28F52BB0019__INCLUDED_)
#define AFX_MOCHARTRENDERER_H__9C9CE561_292A_45FF_8D1E_B28F52BB0019__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CMoChartRenderer wrapper class

class CMoChartRenderer : public COleDispatchDriver
{
public:
	CMoChartRenderer() {}		// Calls COleDispatchDriver default constructor
	CMoChartRenderer(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CMoChartRenderer(const CMoChartRenderer& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:
	CString GetSizeField();
	void SetSizeField(LPCTSTR);
	short GetFieldCount();
	void SetFieldCount(short);
	double GetNullValue();
	void SetNullValue(double);
	long GetChartType();
	void SetChartType(long);
	short GetBarWidth();
	void SetBarWidth(short);
	short GetBarHeight();
	void SetBarHeight(short);
	CString GetNormalizationField();
	void SetNormalizationField(LPCTSTR);
	short GetMinPieSize();
	void SetMinPieSize(short);
	short GetMaxPieSize();
	void SetMaxPieSize(short);
	BOOL GetShowOutline();
	void SetShowOutline(BOOL);
	CString GetTag();
	void SetTag(LPCTSTR);
	LPUNKNOWN GetCustomChart();
	void SetCustomChart(LPUNKNOWN);
	BOOL GetDrawBackground();
	void SetDrawBackground(BOOL);

// Operations
public:
	CString GetField(short index);
	void SetField(short index, LPCTSTR lpszNewValue);
	unsigned long GetColor(short index);
	void SetColor(short index, unsigned long newValue);
	void NoNullValue();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOCHARTRENDERER_H__9C9CE561_292A_45FF_8D1E_B28F52BB0019__INCLUDED_)
