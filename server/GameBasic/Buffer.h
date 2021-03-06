/*
 * Buffer.h
 *
 *  Created on: Dec 25, 2014
 *      Author: root
 */

#ifndef GWEN_BUFFER_H_
#define GWEN_BUFFER_H_

#include <event2/buffer.h>
#include <string>

#define BUFFER_NORMAL_SIZE 1024

enum Endian
{
	little_endian = 1,
	big_endian = 2
};

class Buffer
{//暂时不支持线程安全

	friend class TcpConnection;
public:
	Buffer(int endian = little_endian);
	~Buffer(void);

	size_t Length(void) const;

	Buffer & operator <<(const char c);
	Buffer & operator <<(const bool val);
	Buffer & operator <<(const int &val);
	Buffer & operator <<(const char *cstr);
	Buffer & operator <<(const std::string &ss);
	Buffer & operator <<(const short &val);
	Buffer & operator <<(const double &val);

	Buffer & operator >>(char &c);
	Buffer & operator >>(bool &val);
	Buffer & operator >>(int &val);
	Buffer & operator >>(std::string &ss);
	Buffer & operator >>(short &val);
	Buffer & operator >>(double &val);

	Buffer & operator =(const Buffer &buffer);

	void addBeginInt(const int &val);

	int expand(const int size);

private:
	int addData(const void *data, size_t len);
	int removeData(void *data, size_t len);

private:
	struct evbuffer *evb_;
	int endian_;
};

#define BUFFER_NEW_ACTION(BUFFER, SIZE, ACTION)	\
	do {	\
		BUFFER = new Buffer();	\
		if (BUFFER->expand(SIZE)){ACTION;}	\
	}while(0)	\

#define BUFFER_NEW(BUFFER, SIZE) \
	BUFFER_NEW_ACTION(BUFFER, SIZE, return)	\

#define BUFFER_NEW_RETURN(BUFFER, SIZE, RETURN) \
	BUFFER_NEW_ACTION(BUFFER, SIZE, return RETURN)	\


#endif /* GWEN_BUFFER_H_ */
