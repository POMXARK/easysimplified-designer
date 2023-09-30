SOURCES=src/*.cs src/*/*.cs src/*/*/*.cs
BUILD_DIR=build
DEPS_DIR = deps
DEPS = ${DEPS_DIR}/*.dll
DIST_DIR = ${BUILD_DIR}/easysimplified-designer-dist
MD_DIST_DIR = ${MD_BUILD_DIR}/easysimplified-designer
ASSEMBLY=easysimplified-designer.exe
REFERENCES=System.Design,System.Windows.Forms,System.Drawing,System.Data,${DEPS_DIR}/ICSharpCode.NRefactory.dll

all: ${BUILD_DIR}/${ASSEMBLY}

${BUILD_DIR}/${ASSEMBLY}: ${SOURCES}
	mkdir -p ${BUILD_DIR}
	MCS_COLORS=disable mcs -debug -r:${REFERENCES} -out:${BUILD_DIR}/${ASSEMBLY} ${SOURCES}

run: all
	cp ${DEPS_DIR}/*.dll ${BUILD_DIR}
	mono --debug ${BUILD_DIR}/easysimplified-designer.exe
