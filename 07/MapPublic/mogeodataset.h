#if !defined(AFX_MOGEODATASET_H__1FC72BA5_F816_4BF9_A192_D1CABFB00A98__INCLUDED_)
#define AFX_MOGEODATASET_H__1FC72BA5_F816_4BF9_A192_D1CABFB00A98__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CMoGeoDataset wrapper class

class CMoGeoDataset : public COleDispatchDriver
{
public:
	CMoGeoDataset() {}		// Calls COleDispatchDriver default constructor
	CMoGeoDataset(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CMoGeoDataset(const CMoGeoDataset& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:
	CString GetName();
	void SetName(LPCTSTR);
	BOOL GetAllowSharing();
	void SetAllowSharing(BOOL);
	BOOL GetHasZ();
	void SetHasZ(BOOL);
	BOOL GetHasMeasure();
	void SetHasMeasure(BOOL);

// Operations
public:
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOGEODATASET_H__1FC72BA5_F816_4BF9_A192_D1CABFB00A98__INCLUDED_)
